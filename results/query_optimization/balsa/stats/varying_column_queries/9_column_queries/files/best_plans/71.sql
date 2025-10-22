/*+ HashJoin(c ph u p b)
 HashJoin(c ph u p)
 HashJoin(ph u p)
 HashJoin(ph u)
 SeqScan(c)
 IndexScan(ph)
 SeqScan(u)
 SeqScan(p)
 IndexScan(b)
 Leading(((c ((ph u) p)) b)) */
SELECT COUNT(*) FROM comments as c, posts as p, postHistory as ph, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = p.OwnerUserId AND u.Id = ph.UserId AND u.Id = b.UserId AND c.CreationDate<='2014-09-10 16:03:25'::timestamp AND p.PostTypeId=1 AND p.Score<=23 AND p.FavoriteCount>=0 AND p.FavoriteCount<=5 AND ph.CreationDate>='2010-12-07 03:47:50'::timestamp AND b.Date>='2010-08-02 18:00:10'::timestamp AND u.DownVotes<=0 AND u.UpVotes<=683;

