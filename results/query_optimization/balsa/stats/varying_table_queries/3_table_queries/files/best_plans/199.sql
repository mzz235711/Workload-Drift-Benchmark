/*+ HashJoin(ph p u)
 MergeJoin(p u)
 IndexScan(ph)
 IndexScan(p)
 IndexScan(u)
 Leading((ph (p u))) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u WHERE ph.PostId = p.Id AND p.OwnerUserId = u.Id AND p.PostTypeId=1 AND p.CommentCount>=0 AND p.CommentCount<=28 AND p.FavoriteCount>=0 AND p.FavoriteCount<=6 AND u.Reputation>=1 AND u.Views=0 AND u.UpVotes>=0 AND u.UpVotes<=6 AND u.CreationDate>='2010-07-27 00:21:02'::timestamp;

