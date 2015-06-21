package :rvm do
  description 'Ruby Version Manager'

  # add RVM keyserver and key
  bash 'gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3'

  # install RVM
  bash '\curl -sSL https://get.rvm.io | bash -s stable'

  # reload shell
  bash 'exec bash'

  verify do
    # check if everything is ok
    result = `type rvm | head -1`
    result == 'rvm is a function'
  end
end

package :ruby do
  description 'Ruby language interpreter'

  bash 'rvm install 2.1'

  requires :rvm

  verify do
    has_executable 'ruby'
  end
end