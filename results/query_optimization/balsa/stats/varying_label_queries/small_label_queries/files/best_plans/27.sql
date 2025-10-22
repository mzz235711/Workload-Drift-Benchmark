/*+ MergeJoin(u p)
 IndexScan(u)
 SeqScan(p)
 Leading((u p)) */
SELECT COUNT(*) FROM posts as p, users as u WHERE p.OwnerUserId= u.Id AND p.PostTypeId=1 AND p.Score>=-1 AND p.ViewCount>=0 AND p.ViewCount<=7286 AND p.AnswerCount>=0 AND p.FavoriteCount>=0 AND p.CreationDate='2012-11-28 23:27:50'::timestamp AND u.UpVotes>=0;

