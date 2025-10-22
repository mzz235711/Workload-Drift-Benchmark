/*+ HashJoin(v b u p)
 HashJoin(b u p)
 NestLoop(u p)
 SeqScan(v)
 SeqScan(b)
 SeqScan(u)
 IndexScan(p)
 Leading((v (b (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-10 AND p.Score<23 AND p.CommentCount>4 AND p.CommentCount<17 AND u.DownVotes>63 AND u.DownVotes<517 AND v.CreationDate>'2009-06-14 08:26:43'::timestamp AND v.CreationDate<'2011-06-21 16:38:48'::timestamp AND v.VoteTypeId>5 AND v.VoteTypeId<15 AND b.Date>'2011-05-17 14:17:14'::timestamp AND b.Date<'2012-04-16 06:37:56'::timestamp;

