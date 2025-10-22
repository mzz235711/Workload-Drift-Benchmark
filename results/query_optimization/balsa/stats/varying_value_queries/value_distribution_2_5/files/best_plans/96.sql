/*+ NestLoop(v u p b)
 HashJoin(v u p)
 NestLoop(u p)
 SeqScan(v)
 IndexScan(u)
 IndexScan(p)
 IndexScan(b)
 Leading(((v (u p)) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>6 AND p.Score<180 AND p.CommentCount>10 AND p.CommentCount<33 AND u.DownVotes>402 AND u.DownVotes<1547 AND v.CreationDate>'2009-03-09 10:06:34'::timestamp AND v.CreationDate<'2014-03-08 23:44:39'::timestamp AND v.VoteTypeId>3 AND v.VoteTypeId<6 AND b.Date>'2010-08-26 11:45:43'::timestamp AND b.Date<'2013-05-14 16:31:19'::timestamp;

