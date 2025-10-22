/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>9 AND p.Score<186 AND p.CommentCount>11 AND p.CommentCount<28 AND u.DownVotes>230 AND u.DownVotes<1065 AND v.CreationDate>'2010-06-19 12:25:45'::timestamp AND v.CreationDate<'2012-09-06 07:41:40'::timestamp AND v.VoteTypeId>7 AND v.VoteTypeId<10 AND b.Date>'2012-01-26 21:17:18'::timestamp AND b.Date<'2013-08-12 16:13:19'::timestamp;

