/*+ NestLoop(v u p b)
 HashJoin(v u p)
 NestLoop(u p)
 SeqScan(v)
 IndexScan(u)
 IndexScan(p)
 IndexScan(b)
 Leading(((v (u p)) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>27 AND p.Score<127 AND p.CommentCount>1 AND p.CommentCount<31 AND u.DownVotes>108 AND u.DownVotes<1129 AND v.CreationDate>'2009-10-05 14:17:27'::timestamp AND v.CreationDate<'2014-01-13 03:01:45'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<10 AND b.Date>'2014-04-18 17:31:28'::timestamp AND b.Date<'2014-05-27 07:26:38'::timestamp;

