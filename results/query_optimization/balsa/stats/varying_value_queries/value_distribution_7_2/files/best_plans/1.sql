/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>34 AND p.Score<181 AND p.CommentCount>8 AND p.CommentCount<24 AND u.DownVotes>158 AND u.DownVotes<1300 AND v.CreationDate>'2010-07-16 19:44:27'::timestamp AND v.CreationDate<'2012-02-20 08:39:21'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<4 AND b.Date>'2012-10-01 22:46:44'::timestamp AND b.Date<'2014-03-06 14:58:35'::timestamp;

