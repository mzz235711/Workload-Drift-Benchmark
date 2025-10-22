/*+ NestLoop(v u p b)
 HashJoin(v u p)
 NestLoop(u p)
 SeqScan(v)
 IndexScan(u)
 IndexScan(p)
 IndexScan(b)
 Leading(((v (u p)) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>65 AND p.Score<94 AND p.CommentCount>7 AND p.CommentCount<22 AND u.DownVotes>457 AND u.DownVotes<1291 AND v.CreationDate>'2011-10-10 10:29:26'::timestamp AND v.CreationDate<'2012-10-29 08:38:01'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<6 AND b.Date>'2010-11-18 23:38:52'::timestamp AND b.Date<'2014-03-28 18:08:28'::timestamp;

