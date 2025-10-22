/*+ NestLoop(u p b v)
 NestLoop(u p b)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(b)
 IndexScan(v)
 Leading((((u p) b) v)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>114 AND p.Score<143 AND p.CommentCount>6 AND p.CommentCount<38 AND u.DownVotes>96 AND u.DownVotes<1184 AND v.CreationDate>'2010-08-09 13:11:01'::timestamp AND v.CreationDate<'2013-12-26 22:02:00'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<13 AND b.Date>'2011-04-05 23:48:04'::timestamp AND b.Date<'2012-03-02 17:45:55'::timestamp;

