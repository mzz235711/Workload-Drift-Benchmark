/*+ HashJoin(v b u p)
 HashJoin(b u p)
 NestLoop(u p)
 SeqScan(v)
 SeqScan(b)
 SeqScan(u)
 IndexScan(p)
 Leading((v (b (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-8 AND p.Score<115 AND p.CommentCount>2 AND p.CommentCount<17 AND u.DownVotes>499 AND u.DownVotes<1589 AND v.CreationDate>'2013-01-12 14:01:02'::timestamp AND v.CreationDate<'2014-06-04 10:07:46'::timestamp AND v.VoteTypeId>4 AND v.VoteTypeId<15 AND b.Date>'2010-12-03 13:46:46'::timestamp AND b.Date<'2011-01-21 16:42:40'::timestamp;

