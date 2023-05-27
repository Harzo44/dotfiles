fish_add_path ~/.scripts

# Make square jpg (for covert art)
function pic2jsq
    set -l filename (basename $argv[1])
    set -l dirname (dirname $argv[1])
    set -l rootname (echo $filename | string split -f 1 -m 1 -r .)
    set -l targetname "$dirname/$rootname-cover.jpg"
    
    set -l scale 1400
    if [ (count $argv) -gt 1 ]
        set scale $argv[2]
    end

    convert -verbose $argv[1] -scale (printf "%sx%s!" $scale $scale) $targetname
end
