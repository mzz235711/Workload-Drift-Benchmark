/*+ HashJoin(v b u p)
 HashJoin(b u p)
 NestLoop(u p)
 SeqScan(v)
 SeqScan(b)
 SeqScan(u)
 IndexScan(p)
 Leading((v (b (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-15 AND p.Score<24 AND p.CommentCount>4 AND p.CommentCount<41 AND u.DownVotes>590 AND u.DownVotes<1422 AND v.CreationDate>'2009-03-25 09:10:43'::timestamp AND v.CreationDate<'2012-12-29 00:42:56'::timestamp AND v.VoteTypeId>9 AND v.VoteTypeId<15 AND b.Date>'2013-08-25 20:49:16'::timestamp AND b.Date<'2014-05-16 00:13:54'::timestamp;

