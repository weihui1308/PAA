# Introduction
The repository is dedicated to tracking the latest advances in the field of Physical Adversarial Attack (PAA). The maintainer will continue to update it.

If you find any omitted literature, please feel free to submit issues for addition. Many thanks!

Table of Contents:
- <a href="#id_666">Order by Task</a>
- [Order by Time](https://github.com/weihui1308/PAA/blob/main/Timeline.md)
- [Other Survey](https://github.com/weihui1308/PAA/blob/main/Other%20Survey.md)

<!-- If you find our paper and repository useful for your research, please consider citing our work: -->

# News
[2024-11-21] :zap: We have submitted the latest version of our survey paper, [Physical Adversarial Attack meets Computer Vision: A Decade Survey](https://arxiv.org/abs/2209.15179). Feedback and discussions are highly welcome.  

[2024-07-17] :fire: Our paper, [Physical Adversarial Attack meets Computer Vision: A Decade Survey](https://arxiv.org/abs/2209.15179), has been accepted by IEEE Transactions on Pattern Analysis and Machine Intelligence (TPAMI). We are currently working on further refining this research for its fourth version.  

[2022-10-01] :neutral_face: We have submitted our Physical-Adversarial-Attack survey on arXiv: [Physical Adversarial Attack meets Computer Vision: A Decade Survey](https://arxiv.org/abs/2209.15179). We will continue to polish this work.

# Citation
If you find our work useful, please kindly cite as:
```
@article{wei2024physical,
  title={Physical adversarial attack meets computer vision: A decade survey},
  author={Wei, Hui and Tang, Hao and Jia, Xuemei and Wang, Zhixiang and Yu, Hanxun and Li, Zhubo and Satoh, Shin'ichi and Van Gool, Luc and Wang, Zheng},
  journal={IEEE Transactions on Pattern Analysis and Machine Intelligence},
  year={2024},
  publisher={IEEE}
}
```

# Order by Task <span id='id_666'>
:speaker::speaker::speaker: Notice: Updated to 2024.11.21:alarm_clock:
## 1. Attack to Classification
| No.| Method |        Title         | Paper | Code | Venue | Year |
| ---|  ---   |        ---           |   --- | ---  |  ---  | ---  |
|  1  | Adversarial Patch | Adversarial Patch | [link](https://arxiv.org/abs/1712.09665) | [link](https://github.com/cleverhans-lab/cleverhans) | NIPS | 2017 |
|  2  | RP<sub>2 | Robust Physical-World Attacks on Deep Learning Visual Classification | [link](https://openaccess.thecvf.com/content_cvpr_2018/html/Eykholt_Robust_Physical-World_Attacks_CVPR_2018_paper) | [link](https://github.com/evtimovi/robust_physical_perturbations) | CVPR | 2018 |
|  3  | PAE | Adversarial examples in the physical world | [link](https://arxiv.org/abs/1607.02533) | [link](https://github.com/Harry24k/AEPW-pytorch) | AISS | 2018 |
|  4  | EOT | Synthesizing robust adversarial examples | [link](http://proceedings.mlr.press/v80/athalye18b/athalye18b.pdf) | [link](https://github.com/prabhant/synthesizing-robust-adversarial-examples) | PMLR | 2018 |
|  5  | ACS    | Adversarial camera stickers: A physical camera-based attack on deep learning systems | [link](https://proceedings.mlr.press/v97/li19j.html) | [link](https://github.com/yoheikikuta/adversarial-camera-stickers) | PMLR | 2019 |
|  6  | PS-GAN | Perceptual-sensitive gan for generating adversarial patches | [link](https://ojs.aaai.org/index.php/AAAI/article/view/3893) | --- | AAAI | 2019 |
|  7  | Adversarial ACO | Bias-based universal adversarial patch attack for automatic check-out | [link](https://www.ecva.net/papers/eccv_2020/papers_ECCV/papers/123580392.pdf) | --- | ECCV | 2020 |
|  8  | AdvCam | Adversarial camouflage: Hiding physical-world attacks with natural styles | [link](https://arxiv.org/abs/2003.08757) | [link](https://github.com/RjDuan/AdvCam-Hide-Adv-with-Natural-Styles) | CVPR | 2020 |
|  9  | PhysGAN | Physgan: Generating physical-world-resilient adversarial examples for autonomous driving | [link](https://arxiv.org/abs/1907.04449) | --- | CVPR | 2020 |
|  10  | Invisible Perturbations | Invisible Perturbations: Physical Adversarial Examples Exploiting the Rolling Shutter Effect | [link](https://openaccess.thecvf.com/content/CVPR2021/papers/Sayles_Invisible_Perturbations_Physical_Adversarial_Examples_Exploiting_the_Rolling_Shutter_Effect_CVPR_2021_paper.pdf) | [link](https://github.com/EarlMadSec/invis-perturbations)  | CVPR | 2021 |
|  11  | Adversarial ISP | Adversarial imaging pipelines | [link](https://openaccess.thecvf.com/content/CVPR2021/papers/Phan_Adversarial_Imaging_Pipelines_CVPR_2021_paper.pdf) | --- | CVPR | 2021 |
|  12  |  Meta-Attack | Meta-Attack: Class-agnostic and Model-agnostic Physical Adversarial Attack | [link](https://ieeexplore.ieee.org/document/9710684) | --- | ICCV | 2021 |
|  13  | OPAD | Optical Adversarial Attack | [link](https://arxiv.org/abs/2108.06247) | --- | ICCV | 2021 | 
|  14  | AdvLB | Adversarial Laser Beam: Effective Physical-World Attack to DNNs in a Blink | [link](https://openaccess.thecvf.com/content/CVPR2021/papers/Duan_Adversarial_Laser_Beam_Effective_Physical-World_Attack_to_DNNs_in_a_CVPR_2021_paper.pdf) | [link](https://github.com/RjDuan/Advlight) | CVPR | 2021 |
|  15  | Adversarial Shadow | Shadows can be Dangerous: Stealthy and Effective Physical-world Adversarial Attack by Natural Phenomenon | [link](https://openaccess.thecvf.com/content/CVPR2022/papers/Zhong_Shadows_Can_Be_Dangerous_Stealthy_and_Effective_Physical-World_Adversarial_Attack_CVPR_2022_paper.pdf) | [link](https://github.com/hncszyq/ShadowAttack) | CVPR | 2022 |
| 16  | AdvCF  | Adversarial Color Film: Effective Physical-World Attack to DNNs | [link](https://arxiv.org/abs/2209.02430) | --- | Arxiv | 2022 |
|  17  | TT3D | Towards Transferable Targeted 3D Adversarial Attack in the Physical World | [link](https://openaccess.thecvf.com/content/CVPR2024/papers/Huang_Towards_Transferable_Targeted_3D_Adversarial_Attack_in_the_Physical_World_CVPR_2024_paper.pdf) | [link](https://github.com/aries-iai/tt3d) | CVPR | 2024 |
## 2. Attack to Detection
| No.| Method |        Title         | Paper | Code | Venue | Year |
| ---|  ---   |        ---           |   --- | ---  |  ---  | ---  |
| 1  | CAMOU     | CAMOU: Learning physical vehicle camouflages to adversarially attack detectors in the wild | [link](https://openreview.net/forum?id=SJgEl3A5tm) | --- | ICLR | 2018 |
| 2 | ShapeShifter | ShapeShifter: Robust Physical Adversarial Attack on Faster R-CNN Object Detector | [link](https://link.springer.com/chapter/10.1007/978-3-030-10925-7_4) | [link](https://github.com/shangtse/robust-physical-attack) | ECML PKDD | 2018 |
| 3 | Disappearance Attack | Physical Adversarial Examples for Object Detectors | [link](https://www.usenix.org/conference/woot18/presentation/eykholt) | --- | USENIX Workshop | 2018 |
| 4  | Adversarial YOLO | Fooling automated surveillance cameras: adversarial patches to attack person detection | [link](https://openaccess.thecvf.com/content_CVPRW_2019/papers/CV-COPS/Thys_Fooling_Automated_Surveillance_Cameras_Adversarial_Patches_to_Attack_Person_Detection_CVPRW_2019_paper.pdf) | [link](https://gitlab.com/EAVISE/adversarial-yolo) | CVPRW | 2019 |
| 5  | ER Attack | Physical adversarial attack on vehicle detector in the carla simulator | [link](https://arxiv.org/pdf/2007.16118.pdf) | --- | Arxiv | 2020 |
| 6  | Adversarial T-shirt | Adversarial T-shirt! Evading Person Detectors in A Physical World | [link](https://www.ecva.net/papers/eccv_2020/papers_ECCV/papers/123500647.pdf) | [link](https://github.com/jandress94/adversarial_tshirt) | ECCV | 2020 |
| 7  | UPC | Universal Physical Camouflage Attacks on Object Detectors | [link](https://openaccess.thecvf.com/content_CVPR_2020/papers/Huang_Universal_Physical_Camouflage_Attacks_on_Object_Detectors_CVPR_2020_paper.pdf) | [link](https://github.com/mesunhlf/UPC-tf) | CVPR | 2020 |
| 8 |  Adversarial Cloak   | Making an Invisibility Cloak: Real World Adversarial Attacks on Object Detectors | [link](https://link.springer.com/chapter/10.1007/978-3-030-58548-8_1) | [link](https://github.com/zxwu/adv_cloak) | ECCV | 2020 | 
| 9  | Translucent Patch | The Translucent Patch: A Physical and Universal Attack on Object Detectors | [link](https://openaccess.thecvf.com/content/CVPR2021/papers/Zolfi_The_Translucent_Patch_A_Physical_and_Universal_Attack_on_Object_CVPR_2021_paper.pdf) | --- | CVPR | 2021 |
| 10 | TGBS  | Too Good to Be Safe: Tricking Lane Detection in Autonomous Driving with Crafted Perturbations | [link](https://www.usenix.org/system/files/sec21fall-jing.pdf) | --- | USENIX Security | 2021 |
| 11 | NAP | Naturalistic Physical Adversarial Patch for Object Detectors | [link](https://openaccess.thecvf.com/content/ICCV2021/papers/Hu_Naturalistic_Physical_Adversarial_Patch_for_Object_Detectors_ICCV_2021_paper.pdf) | [link](https://github.com/gordonjun2/Naturalistic-Adversarial-Patch) | ICCV | 2021 |
| 12 | LAP | Legitimate Adversarial Patches: Evading Human Eyes and Detection Models in the Physical World | [link](https://dl.acm.org/doi/abs/10.1145/3474085.3475653) | --- | ACM MM | 2021 |
| 13 | SLAP | SLAP: Improving Physical Adversarial Examples with Short-Lived Adversarial Perturbations | [link](https://www.usenix.org/conference/usenixsecurity21/presentation/lovisotto) | [link](https://github.com/ssloxford/short-lived-adversarial-perturbations) | USENIX SECURITY | 2021 |
| 14 | Adversarial Bulbs | Fooling Thermal Infrared Pedestrian Detectors in Real World Using Small Bulbs | [link](https://ojs.aaai.org/index.php/AAAI/article/view/16477) | --- | AAAI | 2021 | 
| 15 | Poltergeist | Poltergeist: Acoustic Adversarial Machine Learning against Cameras and Computer Vision | [link](https://ieeexplore.ieee.org/stamp/stamp.jsp?tp=&arnumber=9519394) | [link](https://github.com/USSLab/PoltergeistAttack) | IEEE SP | 2021 |
| 16 | FCA | FCA: Learning a 3D Full-coverage Vehicle Camouflage for Multi-view Physical Adversarial Attack | [link](https://www.aaai.org/AAAI22Papers/AAAI-8153.WangD.pdf) | [link](https://github.com/idrl-lab/Full-coverage-camouflage-adversarial-attack/tree/gh-pages/src) | AAAI | 2022 |
| 17 | DTA | DTA: Physical Camouflage Attacks using Differentiable Transformation Network | [link](https://openaccess.thecvf.com/content/CVPR2022/papers/Suryanto_DTA_Physical_Camouflage_Attacks_Using_Differentiable_Transformation_Network_CVPR_2022_paper.pdf) | --- | CVPR | 2022 |
| 18  | TC-EGA | Adversarial Texture for Fooling Person Detectors in the Physical World | [link](https://openaccess.thecvf.com/content/CVPR2022/html/Hu_Adversarial_Texture_for_Fooling_Person_Detectors_in_the_Physical_World_CVPR_2022_paper.html) | [link](https://github.com/WhoTHU/Adversarial_Texture) | CVPR | 2022 |
|  19 | Infrared Invisible Clothing | Infrared Invisible Clothing: Hiding From Infrared Detectors at Multiple Angles in Real World | [link](https://openaccess.thecvf.com/content/CVPR2022/html/Zhu_Infrared_Invisible_Clothing_Hiding_From_Infrared_Detectors_at_Multiple_Angles_CVPR_2022_paper.html) | --- | CVPR | 2022 |
| 20 | CAC | Learning Coated Adversarial Camouflages for Object Detectors | [link](https://www.ijcai.org/proceedings/2022/0125.pdf) | --- | IJCAI | 2022 |
| 21  | RobustAE | Fooling the Eyes of Autonomous Vehicles: Robust Physical Adversarial Examples Against Traffic Sign Recognition Systems | [link](https://www.ndss-symposium.org/wp-content/uploads/2022-130-paper.pdf) | --- | NDSS | 2022 |
| 22 | TPatch | TPatch: A Triggered Physical Adversarial Patch | [link](https://www.usenix.org/conference/usenixsecurity23/presentation/zhu) | [link](https://github.com/forget2save/TPatch) | USENIX Security | 2023 |
| 23 | HOTCOLD Block | HOTCOLD Block: Fooling Thermal Infrared Detectors with a Novel Wearable Design | [link](https://ojs.aaai.org/index.php/AAAI/article/view/26777) | [link](https://github.com/weihui1308/HOTCOLDBlock) | AAAI | 2023 |
| 24 | AdvInfrared | Infrared Adversarial Patches with Learnable Shapes and Locations in the Physical World | [link](https://link.springer.com/article/10.1007/s11263-023-01963-y) | [link](https://github.com/shighghyujie/infrared_patch_attack) | IJCV | 2023 |
| 25 | T-SEA | T-SEA: Transfer-based Self-Ensemble Attack on Object Detection | [link](https://arxiv.org/abs/2211.09773) | [link](https://github.com/VDIGPKU/T-SEA) | CVPR | 2023 |
| 26 | AdvCaT | Physically Realizable Natural-Looking Clothing Textures Evade Person Detectors via 3D Modeling |   [link](https://arxiv.org/abs/2307.01778) | [link](https://github.com/WhoTHU/Adversarial_camou) | CVPR | 2023 |
| 27 | CMPatch | Unified Adversarial Patch for Cross-modal Attacks in the Physical World |  [link](https://openaccess.thecvf.com/content/ICCV2023/papers/Wei_Unified_Adversarial_Patch_for_Cross-Modal_Attacks_in_the_Physical_World_ICCV_2023_paper.pdf) | [link](https://github.com/Aries-iai/Cross-modal_Patch_Attack) | ICCV | 2023 |
|  28 | DAP |DAP: A Dynamic Adversarial Patch for Evading Person Detectors | [link](https://openaccess.thecvf.com/content/CVPR2024/papers/Guesmi_DAP_A_Dynamic_Adversarial_Patch_for_Evading_Person_Detectors_CVPR_2024_paper.pdf) | --- | CVPR | 2024 |
|  29 | IACS | Infrared Adversarial Car Stickers | [link](https://openaccess.thecvf.com/content/CVPR2024/papers/Zhu_Infrared_Adversarial_Car_Stickers_CVPR_2024_paper.pdf) | --- | CVPR | 2024 |
|  30 | CAP | Revisiting Adversarial Patches for Designing Camera-Agnostic Attacks against Person Detection  | [link](https://openreview.net/forum?id=2Inwtjvyx8&referrer=%5Bthe%20profile%20of%20Zhixiang%20Wang%5D(%2Fprofile%3Fid%3D~Zhixiang_Wang1)) | [link](https://github.com/weihui1308/CAP) | NeurIPS | 2024 |
|  31 | FDA | Full-Distance Evasion of Pedestrian Detectors in the Physical World | [link](https://openreview.net/forum?id=lWYwZklSvg&referrer=%5BReviewers%20Console%5D(%2Fgroup%3Fid%3DNeurIPS.cc%2F2024%2FConference%2FReviewers%23assigned-submissions)) | --- | NeurIPS | 2024 |
## 3. Attack to Re-Identification
| No.| Method |        Title         | Paper | Code | Venue | Year |
| ---|  ---   |        ---           |   --- | ---  |  ---  | ---  |
| 1  | AdvEyeglass | Accessorize to a Crime: Real and Stealthy Attacks on State-of-the-Art Face Recognition | [link](https://dl.acm.org/doi/abs/10.1145/2976749.2978392) | [link](https://github.com/mahmoods01/accessorize-to-a-crime) | ACM SIGSAC | 2016 |
| 2  | AdvPattern  | AdvPattern: physical-world attacks on deep person re-identification via adversarially transformable patterns | [link](https://arxiv.org/abs/1908.09327) | [link](https://github.com/whuAdv/AdvPattern) | ICCV | 2019 |
| 3  | OAP  | On Adversarial Patches: Real-World Attack on ArcFace-100 Face Recognition System | [link](https://ieeexplore.ieee.org/abstract/document/8958134) | --- | SIBIRCON | 2019 |
| 4  | ALPA | Adversarial Light Projection Attacks on Face Recognition Systems: A Feasibility Study | [link](https://openaccess.thecvf.com/content_CVPRW_2020/html/w48/Nguyen_Adversarial_Light_Projection_Attacks_on_Face_Recognition_Systems_A_Feasibility_CVPRW_2020_paper.html) | --- | CVPRW | 2020 |
| 5  | Advhat | Advhat: Real-world adversarial attack on arcface face id system | [link](https://ieeexplore.ieee.org/abstract/document/9412236) | [link](https://github.com/papermsucode/advhat) | ICPR | 2020 |
| 6  | Adv-Makeup | Adv-Makeup: A New Imperceptible and Transferable Attack on Face Recognition | [link](https://arxiv.org/abs/2105.03162) | [link](https://github.com/TencentYoutuResearch/Adv-Makeup) | IJCAI | 2021 |
| 7  | PP Attack | Simultaneously Optimizing Perturbations and Positions for Black-box Adversarial Patch Attacks | [link](https://arxiv.org/abs/2212.12995) | [link](https://github.com/shighghyujie/newpatch-rl) | TPAMI | 2022 |

## 4. Other Tasks
| No.| Method |        Title         | Victim Task | Paper | Code | Venue | Year |
| ---|  ---   |        ---           |     ---     |  ---  | ---  |  ---  | ---  |
| 1  | Flow Attack | Attacking Optical Flow | Optical Flow Estimation | [link](https://openaccess.thecvf.com/content_ICCV_2019/papers/Ranjan_Attacking_Optical_Flow_ICCV_2019_paper.pdf) | [link](https://github.com/anuragranj/flowattack) | ICCV | 2019 |
| 2  | SS Attack | Evaluating the Robustness of Semantic Segmentation for Autonomous Driving against Real-World Adversarial Patch Attacks | Semantic Segmentation | [link](https://openaccess.thecvf.com/content/WACV2022/html/Nesti_Evaluating_the_Robustness_of_Semantic_Segmentation_for_Autonomous_Driving_Against_WACV_2022_paper.html) | [link](https://github.com/retis-ai/semsegadvpatch) | WACV | 2022| 
| 3  | PAP | Harnessing Perceptual Adversarial Patches for Crowd Counting | Crowd Counting | [link](https://arxiv.org/abs/2109.07986) | [link](https://github.com/shunchang-liu/PAP-Pytorch) | ACM CCS | 2022| 
| 4  | MDE Patch | Physical Attack on Monocular Depth Estimation with Optimal Adversarial Patches | Depth Estimation | [link](https://www.ijcai.org/proceedings/2022/0125.pdf) | --- | ECCV | 2022 |
| 5  | $\epsilon$-isometric Attack | Isometric 3D Adversarial Examples in the Physical World | 3D Point Cloud Recognition | [link](https://arxiv.org/pdf/2210.15291.pdf) | --- | NIPS | 2022 |
| 6  | 3D$^2$Fool | Physical 3D Adversarial Attacks against Monocular Depth Estimation in Autonomous Driving | Depth Estimation | [link](https://openaccess.thecvf.com/content/CVPR2024/papers/Zheng_Physical_3D_Adversarial_Attacks_against_Monocular_Depth_Estimation_in_Autonomous_CVPR_2024_paper.pdf) | [link](https://github.com/Gandolfczjh/3D2Fool) | CVPR | 2024 |


# [Order by Time](https://github.com/weihui1308/PAA/blob/main/Timeline.md)
# [Other Survey](https://github.com/weihui1308/PAA/blob/main/Other%20Survey.md)
