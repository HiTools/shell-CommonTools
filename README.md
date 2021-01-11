# shell-CommonTools

## 介绍

仓库中包含了我们经常用的脚本，例如：Centos的自启动服务、 Mac中自动清理Idea、AndroidStuido 脚本

## 使用说明

### 0x01 Centos 自启动脚本

- [install_service.sh](./bootStartUp/README.md)

### 0x02 Mac Brew 自动切换源脚本

- [cnbrew.sh](./brew/cnbrew.sh) 一键切换为 清华大学开源软件镜像站 中的brew的源

- [enbrew.sh](./brew/cnbrew.sh) 一键切换为 Brew官方源

备注：[清华大学官方源使用帮助]（https://mirrors.tuna.tsinghua.edu.cn/help/homebrew/）

### 0x03 完全清理Idea 以及AndroidStudio 脚本

- cleanAS.sh  一键清理AndroidStudio 卸载残留（适配AS4.1）
- cleanIdea.sh 一键清理Idea的卸载残留（适配IDEA 2020.3）

备注：目前脚本只适用于Mac端应用，Linux和Win暂时不支持

### 0x04 gitSsh Git仓库选择 sshid脚本

- [gitSsh.sh](./git/gitSsh.sh) 小众脚本，给指定仓库设置指定sshId的脚本
