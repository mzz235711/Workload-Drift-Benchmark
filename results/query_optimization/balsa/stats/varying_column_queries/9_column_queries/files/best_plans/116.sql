/*+ HashJoin(ph c u p v)
 MergeJoin(ph c u p)
 HashJoin(c u p)
 HashJoin(c u)
 IndexScan(ph)
 SeqScan(c)
 SeqScan(u)
 SeqScan(p)
 SeqScan(v)
 Leading(((ph ((c u) p)) v)) */
SELECT COUNT(*) FROM comments as c, posts as p, postHistory as ph, votes as v, users as u WHERE u.Id = c.UserId AND c.UserId = p.OwnerUserId AND p.OwnerUserId = ph.UserId AND ph.UserId = v.UserId AND c.CreationDate>='2010-07-20 10:11:50'::timestamp AND p.PostTypeId=1 AND p.CommentCount=0 AND p.FavoriteCount<=2 AND p.CreationDate>='2010-08-01 22:38:49'::timestamp AND ph.PostHistoryTypeId=3 AND v.CreationDate>='2010-07-20 00:00:00'::timestamp AND u.DownVotes>=0 AND u.DownVotes<=0;

