/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-1 AND p.Score<53 AND p.CommentCount>11 AND p.CommentCount<14 AND u.DownVotes>157 AND u.DownVotes<883 AND v.CreationDate>'2009-08-11 15:20:08'::timestamp AND v.CreationDate<'2014-03-27 00:32:58'::timestamp AND v.VoteTypeId>4 AND v.VoteTypeId<14 AND b.Date>'2012-02-16 01:38:39'::timestamp AND b.Date<'2014-08-29 05:36:08'::timestamp;

