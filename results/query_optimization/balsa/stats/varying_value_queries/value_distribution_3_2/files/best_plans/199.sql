/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-7 AND p.Score<73 AND p.CommentCount>5 AND p.CommentCount<26 AND u.DownVotes>251 AND u.DownVotes<1860 AND v.CreationDate>'2011-06-02 08:25:12'::timestamp AND v.CreationDate<'2012-10-05 18:49:21'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<14 AND b.Date>'2010-11-10 22:13:40'::timestamp AND b.Date<'2012-06-19 01:52:31'::timestamp;

