for i in VulkanSceneGraph vsgExamples vsgPoints vsgQt vsgTutorial vsgXchange
do
    git -C $i remote add upstream git@github.com:vsg-dev/${i}.git
done
