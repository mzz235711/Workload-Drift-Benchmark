/*+ MergeJoin(b u v p)
 MergeJoin(u v p)
 MergeJoin(v p)
 IndexScan(b)
 IndexScan(u)
 SeqScan(v)
 IndexScan(p)
 Leading((b (u (v p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>109 AND p.Score<142 AND p.CommentCount>1 AND p.CommentCount<18 AND u.DownVotes>395 AND u.DownVotes<1359 AND v.CreationDate>'2010-03-06 04:37:51'::timestamp AND v.CreationDate<'2012-05-28 04:15:08'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<15 AND b.Date>'2011-12-06 18:38:59'::timestamp AND b.Date<'2012-08-31 02:50:18'::timestamp;

