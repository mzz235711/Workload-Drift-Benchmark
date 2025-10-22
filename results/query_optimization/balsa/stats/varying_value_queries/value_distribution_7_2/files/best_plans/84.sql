/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>0 AND p.Score<85 AND p.CommentCount>19 AND p.CommentCount<26 AND u.DownVotes>255 AND u.DownVotes<1258 AND v.CreationDate>'2010-04-03 03:49:56'::timestamp AND v.CreationDate<'2013-02-20 02:49:31'::timestamp AND v.VoteTypeId>8 AND v.VoteTypeId<14 AND b.Date>'2013-12-06 03:45:29'::timestamp AND b.Date<'2014-07-04 10:16:42'::timestamp;

