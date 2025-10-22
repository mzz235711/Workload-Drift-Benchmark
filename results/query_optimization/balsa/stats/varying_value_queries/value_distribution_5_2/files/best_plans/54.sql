/*+ HashJoin(v b u p)
 HashJoin(b u p)
 NestLoop(u p)
 SeqScan(v)
 SeqScan(b)
 SeqScan(u)
 IndexScan(p)
 Leading((v (b (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>27 AND p.Score<102 AND p.CommentCount>4 AND p.CommentCount<35 AND u.DownVotes>300 AND u.DownVotes<971 AND v.CreationDate>'2010-11-19 08:30:38'::timestamp AND v.CreationDate<'2014-04-25 09:31:53'::timestamp AND v.VoteTypeId>8 AND v.VoteTypeId<14 AND b.Date>'2010-10-20 15:10:59'::timestamp AND b.Date<'2012-04-28 18:52:43'::timestamp;

