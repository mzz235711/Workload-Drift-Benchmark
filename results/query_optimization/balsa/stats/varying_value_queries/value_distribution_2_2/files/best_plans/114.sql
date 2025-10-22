/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-3 AND p.Score<159 AND p.CommentCount>5 AND p.CommentCount<43 AND u.DownVotes>130 AND u.DownVotes<1569 AND v.CreationDate>'2010-01-02 14:47:02'::timestamp AND v.CreationDate<'2011-03-26 22:27:12'::timestamp AND v.VoteTypeId>3 AND v.VoteTypeId<15 AND b.Date>'2012-03-14 11:48:29'::timestamp AND b.Date<'2014-01-17 18:35:29'::timestamp;

