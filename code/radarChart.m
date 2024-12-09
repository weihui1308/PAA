classdef radarChart
% @author : slandarer
% gzh  : slandarer随笔
    properties
        ax=[];Parent=[];arginList={'ClassName','PropName','Type','Parent'}
        XData;RTick=[];RLim=[];SepList=[1,1.2,1.5,2,2.5,3,4,5,6,8]
        Type='Line';
        PropNum;ClassNum
        ClassName={};
        PropName={};
        
        BC=[198,199,201;  38, 74, 96; 209, 80, 51; 241,174, 44; 12,13,15;
            102,194,165; 252,140, 98; 142,160,204; 231,138,195; 
            166,217, 83; 255,217, 48; 229,196,148; 179,179,179]./255;

        % 句柄
        ThetaTickHdl;RTickHdl;RLabelHdl;LgdHdl=[];
        PatchHdlL;PatchHdlP;PropLabelHdl;BkgHdl
    end

    methods
        function obj=radarChart(varargin)
            if isa(varargin{1},'matlab.graphics.axis.Axes')
                obj.ax=varargin{1};varargin(1)=[];
            else  
            end
            obj.XData=varargin{1};varargin(1)=[];
            obj.PropNum=size(obj.XData,2);
            obj.ClassNum=size(obj.XData,1);
            obj.RLim=[0,max(max(obj.XData))];

            % 获取其他信息
            for i=1:2:(length(varargin)-1)
                tid=ismember(obj.arginList,varargin{i});
                if any(tid)
                obj.(obj.arginList{tid})=varargin{i+1};
                end
            end
            if isempty(obj.ax)&&(~isempty(obj.Parent))
                obj.ax=obj.Parent;
            end
            if isempty(obj.ax)
                obj.ax=gca;
            end
            obj.ax.NextPlot='add';
            if isempty(obj.ClassName)
                for i=1:obj.ClassNum
                    obj.ClassName{i}=['class ',num2str(i)];
                end
            end
            if isempty(obj.PropName)
                for i=1:obj.PropNum
                    obj.PropName{i}=['prop ',num2str(i)];
                end
            end
            help radarChart
        end

        function obj=draw(obj)
            obj.ax.XLim=[-1,1];
            obj.ax.YLim=[-1,1];
            obj.ax.XTick=[];
            obj.ax.YTick=[];
            obj.ax.XColor='none';
            obj.ax.YColor='none';
            obj.ax.PlotBoxAspectRatio=[1,1,1];
            % 绘制背景圆形
            tt=linspace(0,2*pi,200);
            obj.BkgHdl=fill(obj.ax,cos(tt),sin(tt),[252,252,252]./255,'EdgeColor',[200,200,200]./255,'LineWidth',1);
            % 绘制Theta刻度线
            tn=linspace(0,2*pi,obj.PropNum+1);tn=tn(1:end-1);
            XTheta=[cos(tn);zeros([1,obj.PropNum]);nan([1,obj.PropNum])];
            YTheta=[sin(tn);zeros([1,obj.PropNum]);nan([1,obj.PropNum])];
            obj.ThetaTickHdl=plot(obj.ax,XTheta(:),YTheta(:),'Color',[200,200,200]./255,'LineWidth',1);
            % 绘制R刻度线
            if isempty(obj.RTick)
                dr=diff(obj.RLim);
                sepR=dr./3;
                multiE=ceil(log(sepR)/log(10));
                sepR=sepR.*10.^(1-multiE);
                sepR=obj.SepList(find(sepR<obj.SepList,1)-1)./10.^(1-multiE);

                sepNum=floor(dr./sepR);
                obj.RTick=obj.RLim(1)+(0:sepNum).*sepR;
                if obj.RTick(end)~=obj.RLim(2)
                    obj.RTick=[obj.RTick,obj.RLim];
                end
            end
            obj.RLim(obj.RLim<obj.RLim(1))=[];
            obj.RLim(obj.RLim>obj.RLim(2))=[];
            
            XR=cos(tt').*(obj.RTick-obj.RLim(1))./diff(obj.RLim);XR=[XR;nan([1,length(obj.RTick)])];
            YR=sin(tt').*(obj.RTick-obj.RLim(1))./diff(obj.RLim);YR=[YR;nan([1,length(obj.RTick)])];
            obj.RTickHdl=plot(obj.ax,XR(:),YR(:),'Color',[200,200,200]./255,'LineWidth',1.1,'LineStyle','--');

            % 绘制雷达图
            for i=1:size(obj.XData,1)
                XP=cos(tn).*(obj.XData(i,:)-obj.RLim(1))./diff(obj.RLim);
                YP=sin(tn).*(obj.XData(i,:)-obj.RLim(1))./diff(obj.RLim);
                obj.PatchHdlP(i)=patch(obj.ax,XP,YP,obj.BC(mod(i-1,size(obj.BC,1))+1,:),...
                    'EdgeColor',obj.BC(mod(i-1,size(obj.BC,1))+1,:),'FaceAlpha',.2,...
                    'LineWidth',1.8);
                obj.PatchHdlL(i)=plot(obj.ax,[XP,XP(1)],[YP,YP(1)],...
                    'Color',obj.BC(mod(i-1,size(obj.BC,1))+1,:),'Marker','o',...
                    'LineWidth',1.8,'MarkerFaceColor',obj.BC(mod(i-1,size(obj.BC,1))+1,:));
                switch obj.Type
                    case 'Line',set(obj.PatchHdlP(i),'Visible','off')
                    case 'Patch',set(obj.PatchHdlL(i),'Visible','off')
                    case 'Both'
                end
            end

            % 绘制R标签文本
            tnr=(tn(1)+tn(2))/2;
            for i=1:length(obj.RTick)
                obj.RLabelHdl(i)=text(obj.ax,cos(tnr).*(obj.RTick(i)-obj.RLim(1))./diff(obj.RLim),...
                                      sin(tnr).*(obj.RTick(i)-obj.RLim(1))./diff(obj.RLim),...
                                      sprintf('%.2f',obj.RTick(i)),'FontName','Arial','FontSize',11);
            end

            % 绘制属性标签
            for i=1:obj.PropNum
                obj.PropLabelHdl(i)=text(obj.ax,cos(tn(i)).*1.1,sin(tn(i)).*1.1,obj.PropName{i},...
                    'FontSize',12,'HorizontalAlignment','center');
            end

        end
% =========================================================================
        function obj=setBkg(obj,varargin)
            set(obj.BkgHdl,varargin{:})
        end
        function obj=setType(obj,Type)
            obj.Type=Type;
            for i=1:size(obj.XData,1)
                set(obj.PatchHdlP(i),'Visible','on')
                set(obj.PatchHdlL(i),'Visible','on')
                switch obj.Type
                    case 'Line',set(obj.PatchHdlP(i),'Visible','off')
                    case 'Patch',set(obj.PatchHdlL(i),'Visible','off')
                end
            end
            delete(findobj('Tag','SRClagend'))
            if isequal(obj.Type,'Line')
                obj.LgdHdl=legend(obj.ax,[obj.PatchHdlL],obj.ClassName,'FontSize',12,'Location','best','Tag','SRClagend');
            else
                obj.LgdHdl=legend(obj.ax,[obj.PatchHdlP],obj.ClassName,'FontSize',12,'Location','best','Tag','SRClagend');
            end
        end

        % 绘制图例
        function obj=legend(obj)
            if isequal(obj.Type,'Line')
                obj.LgdHdl=legend(obj.ax,[obj.PatchHdlL],obj.ClassName,'FontSize',12,'Location','best','Tag','SRClagend');
            else
                obj.LgdHdl=legend(obj.ax,[obj.PatchHdlP],obj.ClassName,'FontSize',12,'Location','best','Tag','SRClagend');
            end
        end

        % 设置图例属性
        function obj=setLegend(obj,varargin)
            set(obj.LgdHdl,varargin{:})
        end

        % 设置标签
        function obj=setPropLabel(obj,varargin)
            for i=1:obj.PropNum
                set(obj.PropLabelHdl(i),varargin{:})
            end
        end
        function obj=setRLabel(obj,varargin)
            for i=1:length(obj.RLabelHdl)
                set(obj.RLabelHdl(i),varargin{:})
            end
        end

        % 设置轴
        function obj=setRTick(obj,varargin)
            set(obj.RTickHdl,varargin{:})
        end
        function obj=setThetaTick(obj,varargin)
            set(obj.ThetaTickHdl,varargin{:})
        end

        % 设置patch属性
        function obj=setPatchN(obj,N,varargin)
            switch obj.Type
                case 'Line',set(obj.PatchHdlL(N),varargin{:})
                case 'Patch',set(obj.PatchHdlP(N),varargin{:})
            end
        end

        function setData(obj,Data)
            tn=linspace(0,2*pi,obj.PropNum+1);tn=tn(1:end-1);
            obj.XData=Data;
            for i=1:size(obj.XData,1)
                XP=cos(tn).*(obj.XData(i,:)-obj.RLim(1))./diff(obj.RLim);
                YP=sin(tn).*(obj.XData(i,:)-obj.RLim(1))./diff(obj.RLim);
                set(obj.PatchHdlL(i),'XData',[XP,XP(1)],'YData',[YP,YP(1)]);
                set(obj.PatchHdlP(i),'XData',[XP,XP(1)],'YData',[YP,YP(1)]);
            end
        end
    end
% @author : slandarer
% gzh : slandarer随笔
% -------------------------------------------------------------------------
end
