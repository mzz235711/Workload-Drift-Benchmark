/*+ MergeJoin(ph u p)
 MergeJoin(u p)
 SeqScan(ph)
 IndexScan(u)
 SeqScan(p)
 Leading((ph (u p))) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u WHERE ph.PostId = p.Id AND p.OwnerUserId = u.Id AND ph.CreationDate<='2014-07-09 13:15:32'::timestamp AND p.Score<=14 AND p.ViewCount>=0 AND p.CommentCount>=0 AND p.FavoriteCount>=0 AND u.Reputation>=1 AND u.Reputation<=231 AND u.DownVotes>=0 AND u.CreationDate>='2010-07-23 15:29:27'::timestamp;

