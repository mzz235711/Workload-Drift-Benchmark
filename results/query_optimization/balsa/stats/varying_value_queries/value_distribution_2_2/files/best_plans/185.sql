/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>8 AND p.Score<136 AND p.CommentCount>4 AND p.CommentCount<14 AND u.DownVotes>319 AND u.DownVotes<1158 AND v.CreationDate>'2009-10-02 02:25:34'::timestamp AND v.CreationDate<'2014-03-20 07:52:10'::timestamp AND v.VoteTypeId>5 AND v.VoteTypeId<11 AND b.Date>'2011-08-02 20:10:49'::timestamp AND b.Date<'2012-05-13 11:42:01'::timestamp;

