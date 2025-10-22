/*+ HashJoin(ph v pl p u b)
 HashJoin(v pl p u b)
 MergeJoin(v pl p u)
 HashJoin(pl p u)
 HashJoin(pl p)
 SeqScan(ph)
 IndexScan(v)
 IndexScan(pl)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((ph ((v ((pl p) u)) b))) */
SELECT COUNT(*) FROM posts as p, postLinks as pl, postHistory as ph, votes as v, badges as b, users as u WHERE p.Id = pl.RelatedPostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND u.Id = ph.UserId AND u.Id = v.UserId AND p.PostTypeId=1 AND pl.LinkTypeId=3 AND ph.CreationDate<='2014-06-16 17:44:50'::timestamp AND v.BountyAmount>=0 AND b.Date>='2010-07-20 16:14:11'::timestamp AND u.DownVotes>=0 AND u.DownVotes<=7 AND u.UpVotes>=0 AND u.UpVotes<=625;

