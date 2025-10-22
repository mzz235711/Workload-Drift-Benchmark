/*+ NestLoop(v u p b)
 HashJoin(v u p)
 NestLoop(u p)
 SeqScan(v)
 IndexScan(u)
 IndexScan(p)
 IndexScan(b)
 Leading(((v (u p)) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>88 AND p.Score<179 AND p.CommentCount>0 AND p.CommentCount<21 AND u.DownVotes>31 AND u.DownVotes<1360 AND v.CreationDate>'2010-09-26 18:20:09'::timestamp AND v.CreationDate<'2013-03-11 11:15:21'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<14 AND b.Date>'2013-05-12 20:16:52'::timestamp AND b.Date<'2013-10-12 08:17:02'::timestamp;

