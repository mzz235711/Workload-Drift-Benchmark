/*+ HashJoin(v b u p)
 HashJoin(b u p)
 NestLoop(u p)
 SeqScan(v)
 SeqScan(b)
 SeqScan(u)
 IndexScan(p)
 Leading((v (b (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-6 AND p.Score<101 AND p.CommentCount>14 AND p.CommentCount<32 AND u.DownVotes>119 AND u.DownVotes<816 AND v.CreationDate>'2010-03-21 18:54:19'::timestamp AND v.CreationDate<'2012-01-02 13:41:23'::timestamp AND v.VoteTypeId>6 AND v.VoteTypeId<15 AND b.Date>'2010-08-13 19:55:54'::timestamp AND b.Date<'2013-10-01 05:05:53'::timestamp;

