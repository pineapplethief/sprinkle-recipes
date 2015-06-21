package :git do
  description 'Git Version Control'

  apt 'git-core', sudo: true

  verify do
    has_executable 'git'
  end
end

package :essentials do
  description 'Build tools required for building linux apps from source'

  apt 'build-essential' do
    pre :install, 'sudo apt-get update'
  end

  verify do
    has_executable 'gcc'
    has_executable 'g++'
  end
end

package :mc do
  description 'Midnight Commander - a must have'

  apt 'mc', sudo: true

  verify do
    has_executable 'mc'
  end
end

package :imagemagick do
  description 'ImageMagick image convertion library'

  apt 'imagemagick'

  verify do
    has_file '/usr/bin/convert'
  end
end