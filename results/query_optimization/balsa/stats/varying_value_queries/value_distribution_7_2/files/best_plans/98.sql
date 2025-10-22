/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>35 AND p.Score<61 AND p.CommentCount>3 AND p.CommentCount<18 AND u.DownVotes>204 AND u.DownVotes<1812 AND v.CreationDate>'2013-01-21 06:47:52'::timestamp AND v.CreationDate<'2013-05-22 10:15:06'::timestamp AND v.VoteTypeId>3 AND v.VoteTypeId<10 AND b.Date>'2012-02-23 07:36:03'::timestamp AND b.Date<'2014-05-13 16:47:26'::timestamp;

