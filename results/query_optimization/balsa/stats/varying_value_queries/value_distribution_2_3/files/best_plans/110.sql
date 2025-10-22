/*+ HashJoin(v b u p)
 HashJoin(b u p)
 HashJoin(u p)
 SeqScan(v)
 SeqScan(b)
 SeqScan(u)
 SeqScan(p)
 Leading((v (b (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>10 AND p.Score<118 AND p.CommentCount>12 AND p.CommentCount<28 AND u.DownVotes>86 AND u.DownVotes<1902 AND v.CreationDate>'2014-04-16 06:54:33'::timestamp AND v.CreationDate<'2014-07-15 14:44:09'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<4 AND b.Date>'2011-04-05 01:08:26'::timestamp AND b.Date<'2011-05-15 02:10:36'::timestamp;

