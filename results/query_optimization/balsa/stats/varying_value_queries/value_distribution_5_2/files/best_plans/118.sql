/*+ HashJoin(v b u p)
 HashJoin(b u p)
 NestLoop(u p)
 SeqScan(v)
 SeqScan(b)
 SeqScan(u)
 IndexScan(p)
 Leading((v (b (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-11 AND p.Score<122 AND p.CommentCount>6 AND p.CommentCount<28 AND u.DownVotes>507 AND u.DownVotes<1327 AND v.CreationDate>'2009-12-20 10:24:32'::timestamp AND v.CreationDate<'2012-07-05 21:06:42'::timestamp AND v.VoteTypeId>4 AND v.VoteTypeId<8 AND b.Date>'2012-04-20 06:32:42'::timestamp AND b.Date<'2012-05-30 05:06:21'::timestamp;

