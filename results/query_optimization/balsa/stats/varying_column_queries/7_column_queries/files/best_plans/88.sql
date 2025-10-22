/*+ HashJoin(ph v u p)
 HashJoin(v u p)
 HashJoin(u p)
 SeqScan(ph)
 SeqScan(v)
 IndexScan(u)
 SeqScan(p)
 Leading((ph (v (u p)))) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, votes as v, users as u WHERE p.Id = ph.PostId AND u.Id = p.OwnerUserId AND p.Id = v.PostId AND ph.CreationDate>='2010-08-05 21:12:50'::timestamp AND ph.CreationDate<='2014-08-29 17:16:42'::timestamp AND p.CommentCount>=0 AND p.CommentCount<=13 AND v.VoteTypeId=2 AND u.UpVotes>=0 AND u.UpVotes<=608;

