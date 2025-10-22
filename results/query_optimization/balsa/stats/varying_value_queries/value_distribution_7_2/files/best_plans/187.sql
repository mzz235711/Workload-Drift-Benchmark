/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-10 AND p.Score<121 AND p.CommentCount>9 AND p.CommentCount<25 AND u.DownVotes>693 AND u.DownVotes<1849 AND v.CreationDate>'2010-02-17 21:40:50'::timestamp AND v.CreationDate<'2013-06-07 16:45:33'::timestamp AND v.VoteTypeId>8 AND v.VoteTypeId<12 AND b.Date>'2012-07-22 07:56:08'::timestamp AND b.Date<'2014-08-27 20:42:53'::timestamp;

