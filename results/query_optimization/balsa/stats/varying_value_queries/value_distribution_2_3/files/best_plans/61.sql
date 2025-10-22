/*+ HashJoin(b v u p)
 HashJoin(v u p)
 HashJoin(u p)
 SeqScan(b)
 SeqScan(v)
 IndexScan(u)
 SeqScan(p)
 Leading((b (v (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>7 AND p.Score<29 AND p.CommentCount>15 AND p.CommentCount<25 AND u.DownVotes>187 AND u.DownVotes<874 AND v.CreationDate>'2010-08-15 13:52:37'::timestamp AND v.CreationDate<'2013-12-22 00:17:18'::timestamp AND v.VoteTypeId>4 AND v.VoteTypeId<10 AND b.Date>'2013-12-10 22:45:09'::timestamp AND b.Date<'2014-08-23 19:22:54'::timestamp;

