/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>18 AND p.Score<66 AND p.CommentCount>2 AND p.CommentCount<18 AND u.DownVotes>541 AND u.DownVotes<897 AND v.CreationDate>'2013-11-03 05:54:57'::timestamp AND v.CreationDate<'2014-02-02 06:02:11'::timestamp AND v.VoteTypeId>3 AND v.VoteTypeId<8 AND b.Date>'2010-12-09 14:43:34'::timestamp AND b.Date<'2012-08-22 10:03:20'::timestamp;

