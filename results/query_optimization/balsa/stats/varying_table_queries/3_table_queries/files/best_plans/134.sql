/*+ MergeJoin(ph u p)
 MergeJoin(u p)
 SeqScan(ph)
 IndexScan(u)
 SeqScan(p)
 Leading((ph (u p))) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u WHERE ph.PostId = p.Id AND p.OwnerUserId = u.Id AND ph.PostHistoryTypeId=1 AND p.Score=1 AND p.CommentCount<=9 AND p.CreationDate<='2014-09-01 13:54:17'::timestamp AND u.DownVotes=0;

