/*+ NestLoop(v p u b)
 NestLoop(v p u)
 MergeJoin(v p)
 SeqScan(v)
 SeqScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>21 AND p.Score<105 AND p.CommentCount>13 AND p.CommentCount<43 AND u.DownVotes>304 AND u.DownVotes<1246 AND v.CreationDate>'2012-07-06 10:09:39'::timestamp AND v.CreationDate<'2013-01-15 19:04:02'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<13 AND b.Date>'2012-07-28 22:56:59'::timestamp AND b.Date<'2013-02-17 09:25:47'::timestamp;

