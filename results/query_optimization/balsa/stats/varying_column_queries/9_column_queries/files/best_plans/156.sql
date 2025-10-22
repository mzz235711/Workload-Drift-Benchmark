/*+ HashJoin(ph u p)
 HashJoin(u p)
 SeqScan(ph)
 IndexScan(u)
 SeqScan(p)
 Leading((ph (u p))) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u WHERE ph.PostId = p.Id AND p.OwnerUserId = u.Id AND ph.PostHistoryTypeId=3 AND p.Score<=7 AND p.AnswerCount<=9 AND p.CommentCount=1 AND p.FavoriteCount=0 AND u.Reputation>=1 AND u.Reputation<=139 AND u.Views>=0 AND u.Views<=73;

