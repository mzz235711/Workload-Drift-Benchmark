/*+ HashJoin(v b u p)
 HashJoin(b u p)
 NestLoop(u p)
 SeqScan(v)
 SeqScan(b)
 SeqScan(u)
 IndexScan(p)
 Leading((v (b (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-16 AND p.Score<82 AND p.CommentCount>9 AND p.CommentCount<21 AND u.DownVotes>512 AND u.DownVotes<1555 AND v.CreationDate>'2012-06-18 22:22:31'::timestamp AND v.CreationDate<'2013-02-26 04:55:42'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<14 AND b.Date>'2010-11-06 15:56:54'::timestamp AND b.Date<'2012-09-28 17:26:29'::timestamp;

