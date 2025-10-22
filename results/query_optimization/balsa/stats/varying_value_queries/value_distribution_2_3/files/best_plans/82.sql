/*+ HashJoin(b v u p)
 HashJoin(v u p)
 HashJoin(u p)
 SeqScan(b)
 SeqScan(v)
 IndexScan(u)
 SeqScan(p)
 Leading((b (v (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-5 AND p.Score<128 AND p.CommentCount>7 AND p.CommentCount<30 AND u.DownVotes>40 AND u.DownVotes<481 AND v.CreationDate>'2013-02-07 07:46:25'::timestamp AND v.CreationDate<'2013-05-12 11:24:39'::timestamp AND v.VoteTypeId>3 AND v.VoteTypeId<8 AND b.Date>'2011-04-01 23:36:16'::timestamp AND b.Date<'2013-12-10 07:11:58'::timestamp;

