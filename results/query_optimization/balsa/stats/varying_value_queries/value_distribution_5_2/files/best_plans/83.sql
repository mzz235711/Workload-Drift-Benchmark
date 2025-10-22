/*+ NestLoop(u p b v)
 NestLoop(u p b)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(b)
 IndexScan(v)
 Leading((((u p) b) v)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>31 AND p.Score<169 AND p.CommentCount>1 AND p.CommentCount<23 AND u.DownVotes>187 AND u.DownVotes<524 AND v.CreationDate>'2010-11-26 10:14:58'::timestamp AND v.CreationDate<'2011-03-04 02:37:51'::timestamp AND v.VoteTypeId>3 AND v.VoteTypeId<14 AND b.Date>'2013-09-01 12:58:20'::timestamp AND b.Date<'2014-04-28 23:11:21'::timestamp;

