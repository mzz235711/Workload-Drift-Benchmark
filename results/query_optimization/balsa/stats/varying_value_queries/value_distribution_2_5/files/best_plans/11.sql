/*+ NestLoop(v u p b)
 HashJoin(v u p)
 NestLoop(u p)
 SeqScan(v)
 IndexScan(u)
 IndexScan(p)
 IndexScan(b)
 Leading(((v (u p)) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>96 AND p.Score<183 AND p.CommentCount>7 AND p.CommentCount<37 AND u.DownVotes>150 AND u.DownVotes<1046 AND v.CreationDate>'2010-07-25 16:39:48'::timestamp AND v.CreationDate<'2012-12-08 10:57:19'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<15 AND b.Date>'2012-02-19 12:03:11'::timestamp AND b.Date<'2013-01-23 19:30:24'::timestamp;

