/*+ HashJoin(v b u p)
 HashJoin(b u p)
 NestLoop(u p)
 SeqScan(v)
 SeqScan(b)
 IndexScan(u)
 IndexScan(p)
 Leading((v (b (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-10 AND p.Score<160 AND p.CommentCount>3 AND p.CommentCount<26 AND u.DownVotes>330 AND u.DownVotes<1086 AND v.CreationDate>'2009-04-30 12:02:51'::timestamp AND v.CreationDate<'2013-09-01 08:09:01'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<9 AND b.Date>'2011-12-25 05:02:41'::timestamp AND b.Date<'2013-08-08 05:50:40'::timestamp;

