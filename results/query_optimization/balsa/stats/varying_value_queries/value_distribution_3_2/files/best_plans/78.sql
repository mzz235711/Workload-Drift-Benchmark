/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>2 AND p.Score<159 AND p.CommentCount>1 AND p.CommentCount<30 AND u.DownVotes>122 AND u.DownVotes<220 AND v.CreationDate>'2011-10-24 22:38:10'::timestamp AND v.CreationDate<'2013-05-23 23:19:05'::timestamp AND v.VoteTypeId>7 AND v.VoteTypeId<15 AND b.Date>'2011-03-02 11:30:48'::timestamp AND b.Date<'2013-10-22 18:25:28'::timestamp;

