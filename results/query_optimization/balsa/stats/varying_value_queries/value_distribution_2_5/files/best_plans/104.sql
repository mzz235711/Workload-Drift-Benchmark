/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-15 AND p.Score<27 AND p.CommentCount>6 AND p.CommentCount<8 AND u.DownVotes>376 AND u.DownVotes<894 AND v.CreationDate>'2010-07-06 00:20:06'::timestamp AND v.CreationDate<'2012-06-18 10:29:44'::timestamp AND v.VoteTypeId>6 AND v.VoteTypeId<10 AND b.Date>'2013-06-05 06:08:14'::timestamp AND b.Date<'2014-05-29 18:14:48'::timestamp;

