/*+ HashJoin(v b u p)
 HashJoin(b u p)
 NestLoop(u p)
 SeqScan(v)
 SeqScan(b)
 SeqScan(u)
 IndexScan(p)
 Leading((v (b (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-9 AND p.Score<66 AND p.CommentCount>2 AND p.CommentCount<21 AND u.DownVotes>138 AND u.DownVotes<1314 AND v.CreationDate>'2010-07-02 11:13:17'::timestamp AND v.CreationDate<'2012-05-29 04:00:31'::timestamp AND v.VoteTypeId>10 AND v.VoteTypeId<15 AND b.Date>'2012-08-12 03:21:58'::timestamp AND b.Date<'2012-10-02 02:09:21'::timestamp;

