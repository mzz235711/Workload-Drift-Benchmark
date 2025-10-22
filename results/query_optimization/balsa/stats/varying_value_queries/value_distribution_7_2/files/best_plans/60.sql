/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>4 AND p.Score<139 AND p.CommentCount>13 AND p.CommentCount<33 AND u.DownVotes>714 AND u.DownVotes<967 AND v.CreationDate>'2011-01-14 12:37:41'::timestamp AND v.CreationDate<'2012-05-19 17:29:45'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<14 AND b.Date>'2011-05-06 19:13:12'::timestamp AND b.Date<'2014-08-23 00:55:08'::timestamp;

