/*+ HashJoin(v u p b)
 HashJoin(v u p)
 NestLoop(u p)
 SeqScan(v)
 IndexScan(u)
 IndexScan(p)
 IndexScan(b)
 Leading(((v (u p)) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>36 AND p.Score<141 AND p.CommentCount>0 AND p.CommentCount<25 AND u.DownVotes>415 AND u.DownVotes<894 AND v.CreationDate>'2011-08-04 13:03:17'::timestamp AND v.CreationDate<'2013-10-14 22:55:22'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<8 AND b.Date>'2013-10-27 22:24:14'::timestamp AND b.Date<'2014-03-19 23:05:56'::timestamp;

