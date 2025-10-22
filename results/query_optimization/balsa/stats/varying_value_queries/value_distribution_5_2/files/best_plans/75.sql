/*+ HashJoin(v b u p)
 HashJoin(b u p)
 NestLoop(u p)
 SeqScan(v)
 SeqScan(b)
 SeqScan(u)
 IndexScan(p)
 Leading((v (b (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>10 AND p.Score<153 AND p.CommentCount>1 AND p.CommentCount<15 AND u.DownVotes>147 AND u.DownVotes<1899 AND v.CreationDate>'2012-02-13 20:43:51'::timestamp AND v.CreationDate<'2012-03-04 08:22:34'::timestamp AND v.VoteTypeId>4 AND v.VoteTypeId<8 AND b.Date>'2012-03-27 06:02:20'::timestamp AND b.Date<'2012-08-22 20:59:21'::timestamp;

