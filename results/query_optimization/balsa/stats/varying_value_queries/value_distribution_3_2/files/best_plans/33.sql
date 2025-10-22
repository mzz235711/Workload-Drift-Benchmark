/*+ NestLoop(u p b v)
 NestLoop(u p b)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(b)
 IndexScan(v)
 Leading((((u p) b) v)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>59 AND p.Score<76 AND p.CommentCount>29 AND p.CommentCount<41 AND u.DownVotes>12 AND u.DownVotes<407 AND v.CreationDate>'2009-12-07 18:41:50'::timestamp AND v.CreationDate<'2013-04-02 06:48:44'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<3 AND b.Date>'2012-09-02 15:01:31'::timestamp AND b.Date<'2014-01-18 16:07:40'::timestamp;

