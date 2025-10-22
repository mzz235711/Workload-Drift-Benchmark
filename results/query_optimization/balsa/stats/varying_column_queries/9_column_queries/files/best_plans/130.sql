/*+ HashJoin(ph v p u)
 HashJoin(v p u)
 HashJoin(p u)
 SeqScan(ph)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 Leading((ph (v (p u)))) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, votes as v, users as u WHERE p.Id = ph.PostId AND u.Id = p.OwnerUserId AND p.Id = v.PostId AND ph.PostHistoryTypeId=3 AND ph.CreationDate>='2010-11-19 11:32:02'::timestamp AND p.ViewCount>=0 AND p.ViewCount<=6568 AND p.CommentCount=5 AND p.FavoriteCount>=0 AND v.VoteTypeId=2 AND u.Reputation<=658 AND u.CreationDate>='2010-08-02 20:31:12'::timestamp;

