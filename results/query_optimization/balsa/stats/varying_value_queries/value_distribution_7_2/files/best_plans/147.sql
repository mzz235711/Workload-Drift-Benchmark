/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>3 AND p.Score<18 AND p.CommentCount>15 AND p.CommentCount<29 AND u.DownVotes>102 AND u.DownVotes<1120 AND v.CreationDate>'2010-04-12 16:23:21'::timestamp AND v.CreationDate<'2012-01-02 08:26:56'::timestamp AND v.VoteTypeId>4 AND v.VoteTypeId<11 AND b.Date>'2012-03-25 18:49:04'::timestamp AND b.Date<'2013-11-21 09:13:42'::timestamp;

