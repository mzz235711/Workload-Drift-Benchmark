/*+ NestLoop(v u p b)
 HashJoin(v u p)
 NestLoop(u p)
 SeqScan(v)
 IndexScan(u)
 IndexScan(p)
 IndexScan(b)
 Leading(((v (u p)) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-10 AND p.Score<81 AND p.CommentCount>6 AND p.CommentCount<36 AND u.DownVotes>552 AND u.DownVotes<1766 AND v.CreationDate>'2010-12-20 15:49:41'::timestamp AND v.CreationDate<'2014-08-12 21:53:44'::timestamp AND v.VoteTypeId>3 AND v.VoteTypeId<10 AND b.Date>'2011-03-19 11:29:43'::timestamp AND b.Date<'2014-03-09 19:52:44'::timestamp;

