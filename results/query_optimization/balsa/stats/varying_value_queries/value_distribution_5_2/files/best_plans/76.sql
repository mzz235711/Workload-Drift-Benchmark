/*+ HashJoin(v b u p)
 HashJoin(b u p)
 NestLoop(u p)
 SeqScan(v)
 SeqScan(b)
 SeqScan(u)
 IndexScan(p)
 Leading((v (b (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>8 AND p.Score<122 AND p.CommentCount>6 AND p.CommentCount<43 AND u.DownVotes>334 AND u.DownVotes<1906 AND v.CreationDate>'2009-02-03 08:44:04'::timestamp AND v.CreationDate<'2010-12-14 06:54:19'::timestamp AND v.VoteTypeId>4 AND v.VoteTypeId<8 AND b.Date>'2010-12-17 16:55:27'::timestamp AND b.Date<'2013-03-28 18:54:58'::timestamp;

