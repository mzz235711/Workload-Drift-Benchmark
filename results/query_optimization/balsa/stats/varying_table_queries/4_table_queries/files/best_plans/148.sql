/*+ HashJoin(v u ph p)
 HashJoin(u ph p)
 HashJoin(ph p)
 SeqScan(v)
 SeqScan(u)
 IndexScan(ph)
 SeqScan(p)
 Leading((v (u (ph p)))) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, votes as v, users as u WHERE p.Id = ph.PostId AND u.Id = p.OwnerUserId AND p.Id = v.PostId AND ph.PostHistoryTypeId=3 AND ph.CreationDate<='2014-07-29 13:53:07'::timestamp AND p.CommentCount>=0 AND p.CreationDate>='2010-08-17 13:18:59'::timestamp AND v.VoteTypeId=2 AND v.CreationDate<='2014-09-09 00:00:00'::timestamp AND u.Reputation>=1 AND u.DownVotes>=0;

