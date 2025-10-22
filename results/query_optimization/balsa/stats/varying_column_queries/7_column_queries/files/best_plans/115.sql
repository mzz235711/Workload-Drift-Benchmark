/*+ HashJoin(v ph u p)
 HashJoin(ph u p)
 HashJoin(u p)
 SeqScan(v)
 SeqScan(ph)
 IndexScan(u)
 SeqScan(p)
 Leading((v (ph (u p)))) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, votes as v, users as u WHERE p.Id = ph.PostId AND u.Id = p.OwnerUserId AND p.Id = v.PostId AND p.PostTypeId=1 AND p.ViewCount>=0 AND p.AnswerCount<=5 AND p.FavoriteCount<=3 AND p.CreationDate>='2010-07-19 23:13:32'::timestamp AND v.VoteTypeId=2 AND u.Views>=0;

