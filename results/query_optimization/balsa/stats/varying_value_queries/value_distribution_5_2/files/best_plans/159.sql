/*+ HashJoin(v b u p)
 HashJoin(b u p)
 NestLoop(u p)
 SeqScan(v)
 SeqScan(b)
 SeqScan(u)
 IndexScan(p)
 Leading((v (b (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>43 AND p.Score<111 AND p.CommentCount>3 AND p.CommentCount<20 AND u.DownVotes>655 AND u.DownVotes<1330 AND v.CreationDate>'2012-08-28 09:58:49'::timestamp AND v.CreationDate<'2013-02-01 13:21:34'::timestamp AND v.VoteTypeId>4 AND v.VoteTypeId<8 AND b.Date>'2011-05-07 00:57:02'::timestamp AND b.Date<'2012-08-19 19:59:55'::timestamp;

