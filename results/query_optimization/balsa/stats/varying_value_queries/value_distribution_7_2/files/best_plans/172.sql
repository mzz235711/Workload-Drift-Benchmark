/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-11 AND p.Score<159 AND p.CommentCount>4 AND p.CommentCount<6 AND u.DownVotes>35 AND u.DownVotes<573 AND v.CreationDate>'2013-05-21 21:17:28'::timestamp AND v.CreationDate<'2013-09-08 03:15:40'::timestamp AND v.VoteTypeId>10 AND v.VoteTypeId<14 AND b.Date>'2012-07-04 09:08:24'::timestamp AND b.Date<'2014-08-14 04:44:38'::timestamp;

